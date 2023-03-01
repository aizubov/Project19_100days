//
//  ScriptExamples.swift
//  Extension
//
//  Created by user228564 on 2/28/23.
//

let scriptExamples = [
    (title: "Display an alert",
     example: """
        alert("Page title: " + document.title + "\\nPage url: " + document.URL);
        """
    ),
    (title: "Split URL",
     example: """
        alert("Protocol: " + window.location.protocol + "\\nHost: " + window.location.host + "\\nPathname: " + window.location.pathname);
        """
    )
]
