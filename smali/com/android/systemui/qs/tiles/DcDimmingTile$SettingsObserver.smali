.class Lcom/android/systemui/qs/tiles/DcDimmingTile$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DcDimmingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DcDimmingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DcDimmingTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DcDimmingTile;Landroid/os/Handler;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DcDimmingTile$SettingsObserver;->this$0:Lcom/android/systemui/qs/tiles/DcDimmingTile;

    .line 131
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DcDimmingTile$SettingsObserver;->this$0:Lcom/android/systemui/qs/tiles/DcDimmingTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DcDimmingTile;->access$000(Lcom/android/systemui/qs/tiles/DcDimmingTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dc_dimming_auto_mode"

    .line 136
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "dc_dimming_state"

    .line 139
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DcDimmingTile$SettingsObserver;->this$0:Lcom/android/systemui/qs/tiles/DcDimmingTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
