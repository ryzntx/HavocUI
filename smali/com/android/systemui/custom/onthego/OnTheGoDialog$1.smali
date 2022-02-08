.class Lcom/android/systemui/custom/onthego/OnTheGoDialog$1;
.super Ljava/lang/Object;
.source "OnTheGoDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/custom/onthego/OnTheGoDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/systemui/custom/onthego/OnTheGoDialog;Landroid/content/ContentResolver;)V
    .locals 0

    .line 72
    iput-object p2, p0, Lcom/android/systemui/custom/onthego/OnTheGoDialog$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/custom/onthego/OnTheGoDialog$1;->val$resolver:Landroid/content/ContentResolver;

    const-string p1, "on_the_go_alpha"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
