.class Lcom/android/systemui/navigation/pulse/PulseControllerImpl$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PulseControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigation/pulse/PulseControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;Landroid/os/Handler;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$SettingsObserver;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    .line 167
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    const-string p1, "pulse_enabled"

    .line 190
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "pulse_location"

    .line 191
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "ambient_pulse_enabled"

    .line 192
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "navigation_bar_show"

    .line 193
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "pulse_render_style"

    .line 196
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$SettingsObserver;->updateRenderMode()V

    .line 198
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$SettingsObserver;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$1100(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)V

    goto :goto_1

    .line 194
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$SettingsObserver;->updateEnabled()V

    .line 195
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$SettingsObserver;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$1000(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)V

    :cond_2
    :goto_1
    return-void
.end method

.method register()V
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$SettingsObserver;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$900(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pulse_enabled"

    .line 172
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 171
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$SettingsObserver;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$900(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pulse_location"

    .line 175
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 174
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$SettingsObserver;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$900(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ambient_pulse_enabled"

    .line 178
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 177
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$SettingsObserver;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$900(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pulse_render_style"

    .line 181
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 180
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$SettingsObserver;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$900(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_show"

    .line 184
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 183
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method updateEnabled()V
    .locals 7

    .line 208
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$SettingsObserver;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$900(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$SettingsObserver;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$900(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/custom/NavbarUtils;->hasNavbarByDefault(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "navigation_bar_show"

    .line 208
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 211
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$SettingsObserver;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-static {v3}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$900(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pulse_enabled"

    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 213
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$SettingsObserver;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-static {v4}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$900(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "pulse_location"

    invoke-static {v4, v6, v1, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 215
    iget-object v6, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$SettingsObserver;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-static {v6, v0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$1202(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;Z)Z

    .line 216
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$SettingsObserver;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    if-eqz v3, :cond_3

    if-eq v4, v2, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    invoke-static {v0, v4}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$1302(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;Z)Z

    .line 217
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$SettingsObserver;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    if-eqz v3, :cond_4

    invoke-static {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$900(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "ambient_pulse_enabled"

    invoke-static {v0, v3, v1, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_4

    move v1, v2

    :cond_4
    invoke-static {p0, v1}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$1402(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;Z)Z

    return-void
.end method

.method updateRenderMode()V
    .locals 4

    .line 222
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$SettingsObserver;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$900(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pulse_render_style"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$1502(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;I)I

    return-void
.end method

.method updateSettings()V
    .locals 0

    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$SettingsObserver;->updateEnabled()V

    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$SettingsObserver;->updateRenderMode()V

    return-void
.end method
