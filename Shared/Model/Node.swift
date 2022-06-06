//
//  Node.swift
//  ICS4U-Culminating
//
//  Created by Hayden Couch on 2022-05-27.
//

import Foundation

struct Node: Identifiable {
    let id: Int
    let paragraphs: [String]
    let image: String?
    let edges: [Edge]
    let ending: Ending
}

let emptyNode = Node(id: 0, paragraphs: [], image: "", edges: [], ending: Ending(nodeID: 0, ending: false, category: "none"))

let nodes: [Int: Node] = [

    1 : Node(id: 1,
             paragraphs: [
                "You find yourself walking down the street after a night out with friends. Everything is as it should be, the weather is normal and the sounds of animals and critters alike are as they should be. The only thought on your mind is the start of your painful workday tomorrow at the London Museum.  On your way home, you hear a strange man calling out to you.  You wonder if he is actually real and continue to walk down the street.  You hear the strange man again, asking you to hear him out, saying that it would be worth your while.  Do you..."],
             image: "Node 1",
             edges: [
                Edge(destinationId: 2, prompt: "Hear out the strange man and his stories."),
                Edge(destinationId: 27, prompt: "Run away in fear."),
                Edge(destinationId: 28, prompt: "Pretend as if you don’t see him.")],
             ending: Ending(nodeID: 1, ending: false, category: "none")),
    2 : Node(id: 2,
             paragraphs: [
                "You walk over to the man and tell him to tell you about his stories.  He tells you of an old folk tale that you vaguely remember hearing before. You suddenly remember that your father used to tell you this story as a child.  When your father passed, you committed yourself to working at the London museum in his memory. The stories about the long-lost secrets and treasures of the London museum also influenced your decision to work at the museum. You hoped that by working there, you would be able to find closure on whether the stories were true or not.",
                "Up until this point, there has been no mention of any treasures or secrets at the museum.  The mysterious man tells you that part of this folk tale is true and that there is treasure hidden beneath the London museum.  This piques your curiosity.  He tells you to get into his van if you are interested in learning more.  Do you..."],
             image: "Node 2",
             edges: [
                Edge(destinationId: 3, prompt: "Get into his van."),
                Edge(destinationId: 26, prompt: "Begin to get suspicious and tell him you're not interested.")],
             ending: Ending(nodeID: 2, ending: false, category: "none")),
    3 : Node(id: 3,
             paragraphs: [
                "He takes you around the corner and opens the door to his van.  You step into the van and take a seat. The door closes behind you with a thud.  It's surprisingly comfortable – almost too comfortable. Before you can do anything, you begin to feel drowsy and slowly pass out in the seat. When you wake up, you are in what looks like your bedroom. Everything in this room is  identical to your room from before your father passed, when you were a child.",
                "The man from earlier opens the door and walks over to you.  He has something clenched in his hand.  He opens his hand and offers you two pills: a blue pill and a red pill. “Take the blue pill and you can leave. Take the red pill and the course of your life will be changed forever.  Choose carefully, once you choose a pill, there’s no changing your decision.” Before you choose a pill, you ask him what his name is, to which he replies “That is not important to our journey, if the time is ever right I may tell you… but until then there is no need to know.” Do you take the..."],
             image: "",
             edges: [
                Edge(destinationId: 4, prompt: "Blue Pill."),
                Edge(destinationId: 5, prompt: "Red Pill.")],
             ending: Ending(nodeID: 3, ending: false, category: "none")),
    4 : Node(id: 4,
             paragraphs: ["Grabbing the blue pill, you hesitantly swallow it.  A few seconds after swallowing the pill, your throat begins to close and you begin to suffocate.  As your mind becomes foggy and your vision begins to fade to black, you vaguely hear the man say, “I’m sorry, but there is no leaving once you’ve come this far. I can’t have any loose ends.  From the moment you stepped into the van, your life had already changed.  You just didn’t know it. The only way out of this is by walking through death’s door.”",
                 "The End."],
             image: "",
             edges: [],
             ending: Ending(nodeID: 4, ending: true, category: "death")),
    5 : Node(id: 5,
             paragraphs: ["Grabbing the red pill, you swallow it. As you swallow the pill, you brace yourself for something to happen.  Seconds pass and nothing changes.  As you begin to grow more paranoid, the man starts to speak, “This pill will have no effect on you. I just needed to ensure your commitment to our project.”"],
             image: "",
             edges: [
                Edge(destinationId: 6, prompt: "Continue listening.")],
             ending: Ending(nodeID: 5, ending: false, category: "none")),
    6 : Node(id: 6,
             paragraphs: ["“Now you may be wondering what exactly this project is. That’s not important.  All you need to know is that it’s a high risk, high reward course of action. We needed your connection to the London Museum to get the ball rolling. The London museum is just a front for the royal vault. This vault is an accumulation of all the gold and treasure acquired during the entirety of the British Empire.  It’s estimated to have a value of 10 billion pounds. All of that gold can be ours.   We just have to get into the vault. An ancient Monarch law states that the first one to enter the vault without royal ancestry shall be rewarded with all the possessions inside it. Seems simple enough right?”"],
             image: "",
             edges: [
                Edge(destinationId: 7, prompt: "Right.")],
             ending: Ending(nodeID: 6, ending: false, category: "none")),
    7 : Node(id: 7,
             paragraphs: [
                 "“Wrong!  You don’t just walk into the vault.  To enter it, you have to complete 3 puzzles. Making one mistake on any of the puzzles will have you end up just like your late father. Your father was actually the only person to complete the first puzzle.  You’ve been told that he died in a plane crash, but what you don’t know is that he died while attempting puzzle two. Hundreds of people have tried to reach the vault and your father was the closest one. Yet he didn’t come anywhere near entering the vault.  This is the second reason we need you. We believe that your father left you the key to the first puzzle. It’s the only key we don’t already know how to get.”",
                 "The only thing your father left you was a glass case with a rock. You agree to investigate it as you don’t really have another option. At home, you open the glass case and pick up the rock.  With the information from the strange man, you now notice that the rock feels lighter and seems hollow. You need to find a way to open it. Do you..."],
             image: "",
             edges: [
                Edge(destinationId: 8, prompt: "Try heating the rock to make it easier to break."),
                Edge(destinationId: 9, prompt: "Try freezing the rock before trying to crack it.")],
             ending: Ending(nodeID: 7, ending: false, category: "none")),
    8 : Node(id: 8,
             paragraphs: [
                "With the rock heated to a blazing hot temperature, you then go to break the rock. When the rock shatters, you begin to see liquid gold start dripping out of it. Dread fills you as you realize that you have melted the key. This one action has ruined the entire plan, locking the riches in the vault forever. Knowing the consequences of destroying the key, you flee the country in order to escape from the mysterious man.  You were never seen from or heard from again...",
                "The End."],
             image: "",
             edges: [],
             ending: Ending(nodeID: 8, ending: true, category: "death")),
    9 : Node(id: 9,
             paragraphs: ["Shattering the now frozen rock was an easy process. As it shatters, you hear the clang of metal on metal. There it is, the key to the first puzzle. Your father spent his entire life trying to attain this key. It was his most prized possession and the result of his life’s work. In the end, it brought him nothing. You wonder if you will meet the same fate as him.  Now with the key, you wonder if you should give it to the man for safe-keeping or keep it yourself.  Do you..."],
             image: "",
             edges: [
             Edge(destinationId: 10, prompt: "Choose to hold onto it until the heist begins."),
             Edge(destinationId: 11, prompt: "Choose to give it to the mysterious man for safekeeping.")],
             ending: Ending(nodeID: 9, ending: false, category: "none")),
    10 : Node(id: 10,
              paragraphs: ["Now that you’ve obtained the final piece needed for the heist, you must now decide on when to begin the heist.  You contact the man and tell him that you’ve obtained the key.  You also tell him that you will begin the heist tomorrow..."],
              image: "",
              edges: [
              Edge(destinationId: 12, prompt: "During the day."),
              Edge(destinationId: 13, prompt: "During the night.")],
              ending: Ending(nodeID: 10, ending: false, category: "none")),
    11 : Node(id: 11,
              paragraphs: ["You meet up with the man and hand him the key.  As the man grabs the key out of your hand, it dawns on you: you have just given up your only bargaining chip.  An expression of surprise fills your face as you feel a prick in your side.  Neurotoxins.  You see the man’s hand holding a needle that is now embedded in your torso.  As your breathing becomes increasingly harder, you vaguely hear the man tell you that “You are disposable.  Since you are no longer necessary for the project, you will now be disposed of.” As the man turns around and walks away, you fall to the ground and know no more.", "The End."],
              image: "",
              edges: [],
              ending: Ending(nodeID: 11, ending: true, category: "death")),
    12 : Node(id: 12,
              paragraphs: ["Meeting up with the man near the museum, you both begin to walk towards it.  When you get to the building, the entrance is filled by a sea of people. You and the man look at each other and walk the other way.  You both agree to come back at night, when there will be less people around. You don’t want to arouse any suspicion, and coming back at night is the best way to do this. "],
              image: "",
              edges: [
              Edge(destinationId: 13, prompt: "Come back at night.")],
              ending: Ending(nodeID: 12, ending: false, category: "none")),
    13: Node(id: 13,
             paragraphs: ["As night falls, you head to the museum.  When you get there, the man is waiting for you. The first words that come out of his mouth are “Did you bring the key?” You give him a nod and tap the key hidden in your jacket pocket. The man turns around and heads into the museum and leads you to the basement, a part of the museum that you didn’t know existed.  As you continue walking down, every bone in your body tells you that this is a bad idea. It gets colder and you begin to get an eerie feeling.  The small staircase expands into a large spiral staircase that leads to an enormous room with the largest vault door you have ever seen.", "As you scan the room, you see that the corners of the rooms are covered in shadows, and that the only source of light is a small torch placed above what looks like a keyhole. Reaching the bottom of the staircase, the man walks over to the vault door and motions you over.  You understand what he’s asking and pull out your father’s key. You insert the key and turn it.  As you turn the key, a loud click resonates throughout the room and you hear humming and whirring from behind the door.  After a few minutes of these sounds, the door slowly opens, revealing the next puzzle."],
             image: "",
             edges: [
             Edge(destinationId: 14, prompt: "Walk through the door.")],
             ending: Ending(nodeID: 13, ending: false, category: "none")),
    14 : Node(id: 14,
              paragraphs: [],
              image: "",
              edges: [
              Edge(destinationId: 15, prompt: "")],
              ending: Ending(nodeID: 14, ending: false, category: "none")),
    15 : Node(id: 15,
              paragraphs: [],
              image: "",
              edges: [
              Edge(destinationId: 16, prompt: ""),
              Edge(destinationId: 17, prompt: "")],
              ending: Ending(nodeID: 15, ending: false, category: "none")),
    16 : Node(id: 16,
              paragraphs: ["", "The End."],
              image: "",
              edges: [],
              ending: Ending(nodeID: 16, ending: true, category: "death")),
    17 : Node(id: 17,
              paragraphs: [],
              image: "",
              edges: [
              Edge(destinationId: 18, prompt: "")],
              ending: Ending(nodeID: 17, ending: false, category: "none")),
    18 : Node(id: 18,
              paragraphs: [],
              image: "",
              edges: [
              Edge(destinationId: 19, prompt: ""),
              Edge(destinationId: 20, prompt: "")],
              ending: Ending(nodeID: 18, ending: false, category: "none")),
    19 : Node(id: 19,
              paragraphs: ["", "The End."],
              image: "",
              edges: [],
              ending: Ending(nodeID: 19, ending: true, category: "ok")),
    20 : Node(id: 20,
              paragraphs: [],
              image: "",
              edges: [
              Edge(destinationId: 21, prompt: ""),
              Edge(destinationId: 22, prompt: "")],
              ending: Ending(nodeID: 20, ending: false, category: "none")),
    21 : Node(id: 21,
              paragraphs: ["", "The End."],
              image: "",
              edges: [],
              ending: Ending(nodeID: 21, ending: true, category: "death")),
    22 : Node(id: 22,
              paragraphs: [],
              image: "",
              edges: [
              Edge(destinationId: 23, prompt: "")],
              ending: Ending(nodeID: 22, ending: false, category: "none")),
    23 : Node(id: 23,
              paragraphs: [],
              image: "",
              edges: [
              Edge(destinationId: 24, prompt: ""),
              Edge(destinationId: 25, prompt: "")],
              ending: Ending(nodeID: 23, ending: false, category: "none")),
    24 : Node(id: 24,
              paragraphs: ["", "The End."],
              image: "",
              edges: [],
              ending: Ending(nodeID: 24, ending: true, category: "death")),
    25 : Node(id: 25,
              paragraphs: ["", "The End."],
              image: "",
              edges: [],
              ending: Ending(nodeID: 25, ending: true, category: "best")),
    26 : Node(id: 26,
              paragraphs: [],
              image: "",
              edges: [
              Edge(destinationId: 33, prompt: "")],
              ending: Ending(nodeID: 26, ending: false, category: "none")),
    27 : Node(id: 27,
              paragraphs: [],
              image: "",
              edges: [
                Edge(destinationId: 29, prompt: "")],
              ending: Ending(nodeID: 27, ending: false, category: "none")),
    28 : Node(id: 28,
              paragraphs: [],
              image: "",
              edges: [
              Edge(destinationId: 30, prompt: "")],
              ending: Ending(nodeID: 28, ending: false, category: "none")),
    29 : Node(id: 29,
              paragraphs: ["", "The End."],
              image: "",
              edges: [],
              ending: Ending(nodeID: 29, ending: true, category: "death")),
    30 : Node(id: 30,
              paragraphs: [],
              image: "",
              edges: [
              Edge(destinationId: 31, prompt: ""),
              Edge(destinationId: 32, prompt: "")],
              ending: Ending(nodeID: 30, ending: false, category: "none")),
    31 : Node(id: 31,
              paragraphs: [],
              image: "",
              edges: [
              Edge(destinationId: 3, prompt: "")],
              ending: Ending(nodeID: 31, ending: false, category: "none")),
    32 : Node(id: 32,
              paragraphs: ["", "The End."],
              image: "",
              edges: [],
              ending: Ending(nodeID: 32, ending: true, category: "bad")),
    33 : Node(id: 33,
              paragraphs: [],
              image: "",
              edges: [
              Edge(destinationId: 34, prompt: ""),
              Edge(destinationId: 35, prompt: "")],
              ending: Ending(nodeID: 33, ending: false, category: "none")),
    34 : Node(id: 34,
              paragraphs: ["", "The End."],
              image: "",
              edges: [],
              ending: Ending(nodeID: 34, ending: true, category: "medium")),
    35 : Node(id: 35,
              paragraphs: [],
              image: "",
              edges: [
              Edge(destinationId: 36, prompt: ""),
              Edge(destinationId: 37, prompt: "")],
              ending: Ending(nodeID: 35, ending: false, category: "none")),
    36 : Node(id: 36,
              paragraphs: [],
              image: "",
              edges: [
              Edge(destinationId: 37, prompt: ""),
              Edge(destinationId: 38, prompt: "")],
              ending: Ending(nodeID: 36, ending: false, category: "none")),
    37 : Node(id: 37,
              paragraphs: [],
              image: "",
              edges: [
              Edge(destinationId: 3, prompt: "")],
              ending: Ending(nodeID: 37, ending: false, category: "none")),
    38 : Node(id: 38,
              paragraphs: [],
              image: "",
              edges: [
              Edge(destinationId: 39, prompt: "")],
              ending: Ending(nodeID: 38, ending: false, category: "none")),
    39 : Node(id: 39,
              paragraphs: [],
              image: "",
              edges: [
              Edge(destinationId: 40, prompt: ""),
              Edge(destinationId: 41, prompt: "")],
              ending: Ending(nodeID: 39, ending: false, category: "none")),
    40 : Node(id: 40,
              paragraphs: ["", "The End."],
              image: "",
              edges: [],
              ending: Ending(nodeID: 40, ending: true, category: "death")),
    41 : Node(id: 41,
              paragraphs: [],
              image: "",
              edges: [
              Edge(destinationId: 42, prompt: "")],
              ending: Ending(nodeID: 41, ending: false, category: "none")),
    42 : Node(id: 42,
              paragraphs: ["", "The End."],
              image: "",
              edges: [],
              ending: Ending(nodeID: 42, ending: true, category: "good")),
    43 : Node(id: 43,
              paragraphs: [],
              image: "",
              edges: [
              Edge(destinationId: 34, prompt: ""),
              Edge(destinationId: 44, prompt: "")],
              ending: Ending(nodeID: 43, ending: false, category: "none")),
    44 : Node(id: 44,
              paragraphs: [""],
              image: "",
              edges: [
              Edge(destinationId: 37, prompt: ""),
              Edge(destinationId: 38, prompt: "")],
              ending: Ending(nodeID: 44, ending: false, category: "none")),
]