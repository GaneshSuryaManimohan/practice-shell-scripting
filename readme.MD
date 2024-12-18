**Github**
**Steps:**
1. create a repo in git hub
2. clone it in your local machine using the below command:
	``` git clone https://github.com/GaneshSuryaManimohan/practice-shell-scripting.git```
3. start developing the code.
4. Add the files to temporary area:
	``` git add <file-name>```
5. Commit the changes:
	- To commit the changes git must understand who is committing the changes, so we need to setup the user details using below commands:
		``` git config --global user.email "surya.manimohan@gmail.com"```
		``` git config --global user.name "Ganesh-Surya-Manimohan"```
	Then:
	    ``` git commit -m "<message/reason to commit>"```
6. Now, push the code to github
	``` git push -u origin main```