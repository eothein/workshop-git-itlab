
# Wat is git - basics?
+++

@snap[west span-50]
*Git* is een tool die je vooruitgang trackt in functie van de tijd
@snapend

@snap[east span-50]
![](assets/versiolego.png)
@snapend

+++

### Git neemt snapshots
+++

@snap[west span-50]


- Je kan snapshots maken om zo op je stappen terug te keren

- Je kan deze snapshots ook delen met anderen

@snapend

@snap[east span-50]
![](assets/snapshot.png)
@snapend

+++
### Een *repository* beheert de geschiedenis van je project

* Elk project moet zijn eigen repository hebben
	* *Dus Bv. geen Angular en Android project op dezelfde repo*

+++
### Een repo aanmaken
```console
$ cd dirNaam
$ git init oefening
$ cd oefening
$ ls -al
```
of

- Repo aanmaken op Github, initialiseer met README
- Clone with SSH: 

```console
$ git clone git@github.com:user/repo.git
```


+++

### `git` is jouw bureau

1. **Working directory**: waar je werkt en schrijft
2. ***Staging area***: een kladversie klaar om te reviewen
3. ***Repository***: finale versie, klaar om te archiveren

+++


### Eenvoudige workflow (solo)
#### File aanmaken en toevoegen aan staging

```console
$ touch readme.md
$ git status
$ git add reamdme.md
```
@snap[midpoint, south]
![Eenvoudige workflow voor één persoon](assets/workflow-solo.png)
@snapend


+++

### Eenvoudige workflow (solo)
#### Commit maken
```console
$ git commit -m "Beschrijving aanpassing"
```
@snap[midpoint, south]
![Eenvoudige workflow voor één persoon](assets/workflow-solo.png)
@snapend


+++
### Hoe schrijf je een `git commit` Message
![Commit messages](assets/messages.png)

+++
### Hoe schrijf je een `git commit` Message

1. Scheid subject van body met een lege regel
2. Beperk de onderwerpregel tot 50 tekens
3. Begin met een hoofdletter voor het onderwerp
4. Beëindig de onderwerpregel niet met een punt
5. Gebruik de gebiedende wijs in de onderwerpregel
6. Max body tekens: 72
7. Gebruik body om uit te leggen wat en waarom en hoe (indien nodig)

+++

Commit-berichten met een body zijn niet zo eenvoudig om te schrijven met de -m optie. U kunt beter het bericht schrijven in een teksteditor. 

[https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration](Git configuratie aanpassen.)

+++
### Tips and tricks<sup>1</sup>

Gebruik uw favoriete editor (bv. TextMate):

```
git config --global core.editor "mate -w"
```

Andere editors: [voorbeeld](https://help.github.com/articles/associating-text-editors-with-git/)

+++
### Tips and tricks<sup>2</sup>
Gebruik een git commit template om ervoor te zorgen dat iedereen de juiste structuur gebruikt.

```
$ git config --global commit.template ~/.gitmessage.txt
$ git commit
```

+++
### Tips and tricks<sup>3</sup>
```
# [<tag>] (If applied, this commit will...) <subject> (Max 72 char)
# |<----   Preferably using up to 50 chars   --->|<------------------->|
# Example:
# [feat] Implement automated commit messages

# (Optional) Explain why this change is being made
# |<----   Try To Limit Each Line to a Maximum Of 72 Characters   ---->|

# (Optional) Provide links or keys to any relevant tickets, articles or other resources
# Example: Github issue #23

# --- COMMIT END ---
# Tag can be 
#    feat     (new feature)
#    fix      (bug fix)
#    refactor (refactoring code)
#    style    (formatting, missing semi colons, etc; no code change)
#    doc      (changes to documentation)
#    test     (adding or refactoring tests; no production code change)
#    version  (version bump/new release; no production code change)
#    jsrXXX   (Patches related to the implementation of jsrXXX, where XXX the JSR number)
#    jdkX     (Patches related to supporting jdkX as the host VM, where X the JDK version)
#    dbg      (Changes in debugging code/frameworks; no production code change)
#    license  (Edits regarding licensing; no production code change)
#    hack     (Temporary fix to make things move forward; please avoid it)
#    WIP      (Work In Progress; for intermediate commits to keep patches reasonably sized)
#    defaults (changes default options)
#
# Note: Multiple tags can be combined, e.g. [fix][jsr292] Fix issue X with methodhandles
# --------------------
# Remember to:
#   * Capitalize the subject line
#   * Use the imperative mood in the subject line
#   * Do not end the subject line with a period
#   * Separate subject from body with a blank line
#   * Use the body to explain what and why vs. how
#   * Can use multiple lines with "-" or "*" for bullet points in body
# --------------------
```
+++


### Gebruik na elke stap `git status`

- gewijzigde/toegevoegde bestanden: <span style="color:red">rood</span>
- bestanden in "staging": <span style="color:green">groen<span>


* info over commando voor de volgende stap
* info over commando om stap ongedaan te maken

+++

### Vergelijken van werkplaatsen
#### `git diff`

- Vergelijkt staging met de working directory
- Geen output indien deze dezelfde zijn

+++

### Vergelijken van werkplaatsen
#### `git diff --staged`

- Vergelijkt staging met de repository directory
- Geen output indien deze dezelfde zijn

+++

### Commits moeten logisch geordend zijn

- ***Per feature 1 commit!***
- Wat als je een rollback doet waar twee features inzitten, maar je moet er maar 1 van veranderen
	- Tweede feature wordt dan ook gerollbackt.

+++
### Commits moeten logisch geordend zijn
Er is een probleem met de "git add". commando. Omdat we momenteel in de hoofdmap werken, zal "git add". alleen bestanden toevoegen toe die zich in de hoofdmap bevinden. Maar de root-directory kan veel andere mappen met bestanden bevatten. Hoe kunnen we bestanden van die andere mappen plus de bestanden in de root-directory toevoegen aan het verzamelgebied? Git biedt de onderstaande opdracht:

```console
$ git add -All
```

+++

## Ctrl-Z!

* Je kan (zo goed als) elke stap ongedaan maken!
* Lokale wijzigingen aan `README.md` ongedaan maken:

```bash
git checkout -- README.md
```

* `README.md` opnieuw uit `staging` halen :

```bash
git reset HEAD README.md
```

* `git status` herinnert telkens aan deze commando's!

+++

## Historiek
```
git log
```

```console
commit 318f763a52c7987eedb3e27f38e47d6c8f5f7762
Author: eothein <jens.buysse@gmail.com>
Date:   Fri Feb 15 10:14:21 2019 +0100

    [feat] Add tips and tricks for commit messages

    https://gist.github.com/zakkak/7e06725ebd1336bfebebe254de3de825
    https://help.github.com/articles/associating-text-editors-with-git/
```

+++


### Pro tip: Aliases

Voeg toe aan `~/.bashrc`:

```bash
alias s='git status'
alias a='git add'
alias c='git commit -m'
alias d='git diff'
alias g='git'
alias h='git log --pretty="format:%C(yellow)%h %C(blue)%ad %C(reset)%s%C(red)%d %C(green)%an%C(reset), %C(cyan)%ar" --date=short --graph --all'
alias p='git push && git push --tags'
```

+++

```bash
alias gp='git pull --rebase'
alias pr='git pull --rebase'
alias pt='git push -u origin --tags'
# Git author stats
alias gs='git ls-tree -r -z --name-only HEAD | xargs -0 -n1 git blame --line-porcelain | grep  "^author "|sort|uniq -c|sort -nr'
```

Zie: <https://github.com/bertvv/dotfiles/blob/master/.bash.d/aliases.sh>

+++
### Quiz
Wat doen de volgende commando's

* ```git config --global user.name "Sam Smith"```
* ```git init ```
* ```git add <filename>```
* ```git commit -m "Commit message" ```
* ```git push origin master ```
* ```git status ```
* ```git diff ```
* ```git checkout -- <filename>```



+++
### Oefening: Maak je eigen repo

- Maak je repo aan
- Configureer zoals nodig
- Pas de readme.md file aan
- Commit de aanpassingen
- Maak wat aanpassingen aan de readme file, commit ze
- Maak ook wat aanpassingen en annuleer ze in de staging, working tree

---
