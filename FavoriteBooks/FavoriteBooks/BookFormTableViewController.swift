//
//  BookFormTableViewController.swift
//  FavoriteBooks
//
//  Created by GEU on 08/01/26.
//

import UIKit

class BookFormTableViewController: UITableViewController {
    
    var book: Book?
    
    @IBOutlet weak var bookTitle: UILabel!
    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var genre: UILabel!
    @IBOutlet weak var length: UILabel!
    
    init?(coder: NSCoder, book: Book?) {
        self.book = book
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        self.book = nil
        super.init(coder: coder)
    }
    
    func updateView() {
        guard let book = book else {return}
        
        bookTitle.text = book.title
        author.text = book.author
        genre.text = book.genre
        length.text = book.length
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let title = bookTitle.text,
            let author = author.text,
            let genre = genre.text,
            let length = length.text else {return}
        
        book = Book(title: title, author: author, genre: genre, length: length)
        performSegue(withIdentifier: "UnwindToBookTable", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
}
