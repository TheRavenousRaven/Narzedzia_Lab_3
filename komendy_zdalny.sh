#1.1 Wstęp do klonowania (clone)
git clone;

#1.2 Zdalne gałęzie
git commit;
git checkout o/main;
git commit;

#1.3 Git fetch
git fetch;

#1.4 Git pull
git pull;

1.5 Symulacja pracy zespołowej
git clone;
git fakeTeamwork main 2;
git commit;
git pull;

#1.6 Git push
git clone;
git commit;
git commit;
git push;

#1.7 Rozbieżna historia
git clone;
git fakeTeamwork;
git commit;
git pull --rebase;
git push;

#1.8 Zablokowany main
git checkout -b feature;
git checkout main;
git reset --hard o/main;
git push origin feature;
git checkout feature;

#2.1 Wypychanie dla wytrwałych!
git fetch;
git rebase o/main side1;
git rebase side1 side2;
git rebase side2 side3;
git rebase side3 main;
git push;

#2.2 Scalanie z remote
git checkout main;
git pull;
git merge side1;
git merge side2;
git merge side3;
git push;

#2.3 Śledzenie zdalnych repo
git checkout -b side o/main;
git commit;
git pull --rebase;
git push;

#2.4 Argumenty git push
git push origin main;
git push origin foo;

#2.5 Argumenty git push -- Głębiej!
git push origin main~1:foo;
git push origin foo:main;

#2.6 Argumenty fetch
git fetch origin main~1:foo;
git fetch origin foo:main;
git checkout foo;
git merge main;

#2.7 Źródło nicości
git push origin :foo;
git fetch origin :bar;

#2.8 Argumenty pull
git pull origin bar:foo;
git pull origin main:side;