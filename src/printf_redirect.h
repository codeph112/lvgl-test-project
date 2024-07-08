/*
 * printf_redirect.h
 *
 *  Created on: 08-Jul-2024
 *      Author: Bhura Malik
 */

#ifndef PRINTF_REDIRECT_H_
#define PRINTF_REDIRECT_H_

#undef errno
extern int errno;

int _write(int file, char *ptr, int len);
int _close(int file);
int _fstat(int file, struct stat *st);
int _isatty(int file);
int _read(int file, char *ptr, int len);
int _lseek(int file, int ptr, int dir);


#define DEBUG_SERIAL_TIMEOUT 2000/portTICK_PERIOD_MS

#endif /* PRINTF_REDIRECT_H_ */
