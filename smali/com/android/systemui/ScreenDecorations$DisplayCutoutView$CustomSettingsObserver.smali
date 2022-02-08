.class Lcom/android/systemui/ScreenDecorations$DisplayCutoutView$CustomSettingsObserver;
.super Landroid/database/ContentObserver;
.source "ScreenDecorations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;


# direct methods
.method constructor <init>(Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;Landroid/os/Handler;)V
    .locals 0

    .line 1264
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView$CustomSettingsObserver;->this$0:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 1265
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .line 1269
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView$CustomSettingsObserver;->this$0:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->access$1000(Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_cutout_mode"

    .line 1270
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "display_hide_notch"

    .line 1272
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    .line 1283
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView$CustomSettingsObserver;->this$0:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->access$1100(Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1278
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView$CustomSettingsObserver;->this$0:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-static {p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->access$1100(Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;)V

    return-void
.end method
