#ifndef _LAUNCHER_H_
#define _LAUNCHER_H_

#include <string>

int login(const std::string &username, const std::string &password);
void annoyOperator(long numAlerts);
void logout();

#endif /* _LAUNCHER_H_ */
