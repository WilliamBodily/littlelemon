//
//  Menu.swift
//  LittleLemon
//
//  Created by William Bodily on 3/31/25.
//

import SwiftUI
import CoreData

struct Menu: View {
    
    @Environment(\.managedObjectContext) private var viewContext
        
    @State var isLoggedIn = UserDefaults.standard.bool(forKey: kIsLoggedIn)
    
    @State var filterOnSearchText = ""
    @State var filterOnStarters = false
    @State var filterOnMains = false
    @State var filterOnDesserts = false
    @State var filterOnDrinks = false
    
    @State var menuLoaded = false
    
    var body: some View {
        VStack(spacing: 0) {
            Hero(isLoggedIn: $isLoggedIn)
            VStack {
                HStack {
                    Image(systemName: "magnifyingglass.circle")
                        .symbolEffect(.wiggle.up.byLayer, options: .nonRepeating)
                        .foregroundColor(Color(hex: Color.pcLLYellow))
                        .padding(.leading, 6)
                        .padding(.bottom)
                    TextField("Search our menu...", text: $filterOnSearchText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.trailing)
                        .padding(.bottom)
                }
            }
            .background(Color(hex: Color.pcLLGreen))
            MenuBreakdown(filterOnStarters: $filterOnStarters, filterOnMains: $filterOnMains, filterOnDesserts: $filterOnDesserts, filterOnDrinks: $filterOnDrinks)
            Divider()
                .padding([.leading, .trailing])
            VStack {
                FetchedObjects(predicate: buildPredicate(), sortDescriptors: buildSortDescriptors()) { (dishes: [Dish]) in
                    List {
                        ForEach(dishes) { dish in
                            NavigationLink(destination: MenuItemDetails(dish: dish)) {
                                HStack(alignment: .center) {
                                    VStack(alignment: .leading) {
                                        Text(dish.title ?? "")
                                            .font(Font.cfLLSectionCategories)
                                            .foregroundColor(Color(hex: Color.scLLBlack))
                                            .padding(.bottom, 8)
                                        Text(dish.desc ?? "")
                                            .font(Font.cfLLParagraphRegular)
                                            .foregroundColor(Color(hex: Color.scLLGreen))
                                            .lineLimit(2)
                                            .padding(.bottom, 8)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                        Text("$ \(dish.price ?? "")")
                                            .font(Font.cfLLHighlight)
                                            .foregroundColor(Color(hex: Color.scLLGreen))
                                    }
                                    AsyncImage(url: URL(string: dish.image ?? "")!) { image in image.image?.resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 80, height: 80)
                                            .clipped()
                                    }
                                }
                            }
                        }
                    }
                    .scrollContentBackground(.hidden)
                }
                .onAppear() {
                    if (!menuLoaded) {
                        Task {
                            try? await getMenuData(context: viewContext)
                        }
                        menuLoaded = true
                    }
                }
            }
        }
    }
    
    func getMenuData(context: NSManagedObjectContext) async throws {
        
        PersistenceController.shared.clear()
        
        let menuDataURL = "https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/menu.json"
        
        let url = URL(string: menuDataURL)!
        
        let request = URLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let menuList = try decoder.decode(MenuList.self, from: data)
                    for menuItem in menuList.menu {
                        let dish = Dish(context: viewContext)
                        dish.id = menuItem.id
                        dish.title = menuItem.title
                        dish.desc = menuItem.description
                        dish.price = menuItem.price
                        dish.image = menuItem.image
                        dish.category = menuItem.category
                    }
                    try? viewContext.save()
                } catch DecodingError.dataCorrupted(let context) {
                    print(context)
                } catch DecodingError.keyNotFound(let key, let context) {
                    print("Key '\(key)' not found:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch DecodingError.valueNotFound(let value, let context) {
                    print("Value '\(value)' not found:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    print("error: ", error)
                }
            }
        }
        task.resume()
    }
    
    func buildSortDescriptors() -> [NSSortDescriptor] {
        return [NSSortDescriptor(key: "title", ascending: true, selector: #selector(NSString.localizedStandardCompare))]
    }
    
    func buildPredicate() -> NSPredicate {
        let search = (filterOnSearchText.isEmpty) ? NSPredicate(value: true) : NSPredicate(format: "title CONTAINS[cd] %@", filterOnSearchText)
        let starters = filterOnStarters ? NSPredicate(format: "category == %@", "starters") : NSPredicate(value: true)
        let mains = filterOnMains ? NSPredicate(format: "category == %@", "mains") : NSPredicate(value: true)
        let desserts = filterOnDesserts ? NSPredicate(format: "category == %@", "desserts") : NSPredicate(value: true)
        let drinks = filterOnDrinks ? NSPredicate(format: "category == %@", "drinks") : NSPredicate(value: true)

        let compoundPredicate = NSCompoundPredicate(andPredicateWithSubpredicates: [search, starters, mains, desserts, drinks])
        return compoundPredicate
    }
    
}

#Preview {
    Menu()
}
