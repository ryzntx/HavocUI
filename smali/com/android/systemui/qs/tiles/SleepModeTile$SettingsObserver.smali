.class Lcom/android/systemui/qs/tiles/SleepModeTile$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SleepModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SleepModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SleepModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SleepModeTile;Landroid/os/Handler;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SleepModeTile$SettingsObserver;->this$0:Lcom/android/systemui/qs/tiles/SleepModeTile;

    .line 185
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SleepModeTile$SettingsObserver;->this$0:Lcom/android/systemui/qs/tiles/SleepModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SleepModeTile;->access$200(Lcom/android/systemui/qs/tiles/SleepModeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sleep_mode_enabled"

    .line 190
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "sleep_mode_auto_mode"

    .line 193
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SleepModeTile$SettingsObserver;->this$0:Lcom/android/systemui/qs/tiles/SleepModeTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
