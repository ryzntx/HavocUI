.class public final synthetic Lcom/android/systemui/media/dialog/-$$Lambda$MediaOutputController$327qtM9QQP1kNB2djcsTSwNvoP8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/dialog/MediaOutputController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/dialog/MediaOutputController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/dialog/-$$Lambda$MediaOutputController$327qtM9QQP1kNB2djcsTSwNvoP8;->f$0:Lcom/android/systemui/media/dialog/MediaOutputController;

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/dialog/-$$Lambda$MediaOutputController$327qtM9QQP1kNB2djcsTSwNvoP8;->f$0:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->lambda$launchBluetoothPairing$2$MediaOutputController()Z

    move-result p0

    return p0
.end method
