/* SPDX-License-Identifier: Zlib */

#ifndef MAC_TITLEBAR_H
#define MAC_TITLEBAR_H

#ifdef GDK_WINDOWING_QUARTZ
/**
 * Setup macOS-specific window properties
 *
 * @param window The GTK window
 */
void setup_macos_window(GtkWindow *window);
#endif

#endif // MAC_TITLEBAR_H
