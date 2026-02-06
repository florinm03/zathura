#include <gtk/gtk.h>
#include <gdk/gdk.h>
#include <gdk/gdkquartz.h>
#import <AppKit/AppKit.h>
#include "mac-titlebar.h"
extern NSWindow *gdk_quartz_window_get_nswindow(GdkWindow *window);

void setup_macos_window(GtkWindow *window) {
    gtk_window_set_decorated(window, FALSE);

    GdkWindow *gdk_window = gtk_widget_get_window(GTK_WIDGET(window));
    NSWindow *ns_window = gdk_quartz_window_get_nswindow(gdk_window);

    [ns_window setStyleMask:[ns_window styleMask] | NSWindowStyleMaskResizable ];
    [ns_window setTitlebarAppearsTransparent:YES];
    [ns_window setTitleVisibility:NSWindowTitleHidden];
    [ns_window setMovableByWindowBackground:YES];

    NSView *contentView = [ns_window contentView];
    [contentView setWantsLayer:YES];
    [[contentView layer] setCornerRadius:12.0];

}
