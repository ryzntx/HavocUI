.class final Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AlwaysOnDisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ALWAYS_ON_DISPLAY_CONSTANTS_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;Landroid/os/Handler;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 131
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "always_on_display_constants"

    .line 128
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->ALWAYS_ON_DISPLAY_CONSTANTS_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v0}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->access$000(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->ALWAYS_ON_DISPLAY_CONSTANTS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 143
    invoke-virtual {p0, p2}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->ALWAYS_ON_DISPLAY_CONSTANTS_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {p1}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->access$000(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 149
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v0}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->access$000(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "always_on_display_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v1}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->access$100(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/util/KeyValueListParser;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "AlwaysOnDisplayPolicy"

    const-string v1, "Bad AOD constants"

    .line 155
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v0}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->access$100(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/util/KeyValueListParser;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    const-string v4, "prox_screen_off_delay"

    invoke-virtual {v1, v4, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->proxScreenOffDelayMs:J

    .line 160
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v0}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->access$100(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/util/KeyValueListParser;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    const-string v4, "prox_cooldown_trigger"

    invoke-virtual {v1, v4, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->proxCooldownTriggerMs:J

    .line 162
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v0}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->access$100(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/util/KeyValueListParser;

    move-result-object v1

    const-wide/16 v2, 0x1388

    const-string v4, "prox_cooldown_period"

    invoke-virtual {v1, v4, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->proxCooldownPeriodMs:J

    .line 164
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v0}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->access$100(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/util/KeyValueListParser;

    move-result-object v1

    const-wide/16 v2, 0x190

    const-string/jumbo v4, "wallpaper_fade_out_duration"

    invoke-virtual {v1, v4, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->wallpaperFadeOutDuration:J

    .line 166
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v0}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->access$100(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/util/KeyValueListParser;

    move-result-object v1

    const-wide/32 v2, 0xea60

    const-string/jumbo v4, "wallpaper_visibility_timeout"

    invoke-virtual {v1, v4, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->wallpaperVisibilityDuration:J

    .line 168
    iget-object v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {v0}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->access$100(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/util/KeyValueListParser;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$array;->config_doze_brightness_sensor_to_brightness:I

    .line 169
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    const-string v3, "screen_brightness_array"

    .line 168
    invoke-virtual {v1, v3, v2}, Landroid/util/KeyValueListParser;->getIntArray(Ljava/lang/String;[I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->screenBrightnessArray:[I

    .line 171
    iget-object p0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy$SettingsObserver;->this$0:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-static {p0}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->access$100(Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)Landroid/util/KeyValueListParser;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$array;->config_doze_brightness_sensor_to_scrim_opacity:I

    .line 172
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    const-string v1, "dimming_scrim_array"

    .line 171
    invoke-virtual {v0, v1, p1}, Landroid/util/KeyValueListParser;->getIntArray(Ljava/lang/String;[I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->dimmingScrimArray:[I

    :cond_1
    return-void
.end method
