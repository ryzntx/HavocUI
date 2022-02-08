.class Lcom/android/systemui/ScreenDecorations$CustomSettingsObserver;
.super Landroid/database/ContentObserver;
.source "ScreenDecorations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ScreenDecorations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method constructor <init>(Lcom/android/systemui/ScreenDecorations;Landroid/os/Handler;)V
    .locals 0

    .line 1386
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$CustomSettingsObserver;->this$0:Lcom/android/systemui/ScreenDecorations;

    .line 1387
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .line 1391
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$CustomSettingsObserver;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_cutout_mode"

    .line 1392
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    .line 1405
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$CustomSettingsObserver;->update()V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    const-string p1, "display_cutout_mode"

    .line 1398
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1399
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations$CustomSettingsObserver;->update()V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 5

    .line 1409
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$CustomSettingsObserver;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object v1, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_cutout_mode"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/ScreenDecorations;->access$1302(Lcom/android/systemui/ScreenDecorations;I)I

    .line 1411
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$CustomSettingsObserver;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations;->access$1400(Lcom/android/systemui/ScreenDecorations;)V

    return-void
.end method
