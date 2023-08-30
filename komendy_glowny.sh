#1.1 Wprowadzenie do commitów Gita
git commit;
git commit;

#1.2 Rozgałęzienia w Gicie
git branch bugFix;
git checkout bugFix;

#1.3 Merge w Gicie
git checkout -b bugFix;
git commit;
git checkout main;
git commit;
git merge bugFix;

#1.4 Wprowadzenie do Rebase
git checkout -b bugFix;
git commit;
git checkout main;
git commit;
git checkout bugFix;
git rebase main;

#2.1 Odczep sobie HEAD
git checkout C4;

#2.2 Referencje względne (^)
git checkout C4^;

#2.3 Referencje względne #2 (~)
git branch -f main C6;
git branch -f bugFix C0;
git checkout C1;

#2.4 Odwracanie zmian w Gicie
git reset local~1;
git checkout pushed;
git revert pushed;

#3.1 Wprowadzenie do interaktywnego rebase'a
git cherry-pick C3 C4 C7;

#3.2 Interactive Rebase Intro
git rebase -i main~4 --aboveAll;

#4.1 Wzięcie tylko 1 commita
git checkout main;
git cherry-pick C4;

#4.2 Żonglowanie commitami
git rebase -i caption~2 --aboveAll;
git commit --amend;
git rebase -i caption~2 --aboveAll;
git branch -f main caption;

#4.3 Żonglowanie commitami #2
git checkout main;
git cherry-pick C2;
git commit --amend;
git cherry-pick C3;

#4.4 Tagi Gita
git tag v0 C1;
git tag v1 C2;
git checkout C2;

#4.5 Git describe
git commit;

#5.1 Rebase ponad 8000 razy
git rebase main bugFix;
git rebase bugFix side;
git rebase side another;
git rebase another main;

#5.2 Wielu rodziców
git branch bugWork main~^2~;

#5.3 Spaghetti gałęzi
git checkout one;
git cherry-pick C4 C3 C2;
git checkout two;
git cherry-pick C5 C4 C3 C2;
git branch -f three C2;