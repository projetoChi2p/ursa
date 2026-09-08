#include "utils.h"

void put_app_version()
{
    putchar('V');
    putchar('3');
}

void put_padding( uint8_t do_padding, uint8_t pad_len, int8_t pad_character, uint8_t num_len)
{
    if ((do_padding != 0) && (num_len < pad_len)) {
        for (uint8_t i=num_len; i<pad_len; i++) {
            putchar(pad_character);
        }
    }
}

void put_signed_short(const int16_t n, int8_t pad_len)
{
	uint8_t is_negative;
	uint8_t i;
	int8_t output_digits[32];
	uint16_t num;

	if (n < 0) {
		is_negative = 1;
		num = -n;
	}
	else{
		is_negative = 0;
		num = n;
	}


	for(i = 0; i<32; i++) {
		output_digits[i] = '0';
	}

	i = 0;
	do {
		output_digits[i] = '0'+(num % 10);
		i++;
		num /= 10;
	} while (num > 0);

	if (is_negative != 0) {
		output_digits[i] = '-';
		i++;
	}

	output_digits[i] = 0;

	put_padding(DO_PADDING, pad_len, PAD_BLANK, i);
	while (i) {
		i--;
		putchar( output_digits[i] );
	}
}

void put_signed_long(const int64_t n, int8_t pad_len)
{
	uint8_t is_negative;
	uint8_t i;
	int8_t output_digits[32];
	uint64_t num;

	if (n < 0) {
		is_negative = 1;
		num = -n;
	}
	else{
		is_negative = 0;
		num = n;
	}


	for(i = 0; i<32; i++) {
		output_digits[i] = '0';
	}

	i = 0;
	do {
		output_digits[i] = '0'+(num % 10);
		i++;
		num /= 10;
	} while (num > 0);

	if (is_negative != 0) {
		output_digits[i] = '-';
		i++;
	}

	output_digits[i] = 0;

	put_padding(DO_PADDING, pad_len, PAD_BLANK, i);
	while (i) {
		i--;
		putchar( output_digits[i] );
	}
}

void send_status(short status, short line)
{
	puts("");
	put_app_version();
	putchar(' ');
	put_signed_short(line,0);
	putchar(' ');
	put_signed_short(status,0);
	puts(" +++");
}
