.class public final synthetic Lcom/android/systemui/media/dialog/-$$Lambda$MediaOutputController$UfU2fe4WCRCvdOo3KKvSLEzE4r8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/dialog/MediaOutputController;

.field public final synthetic f$1:Lcom/android/settingslib/media/MediaDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/dialog/MediaOutputController;Lcom/android/settingslib/media/MediaDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/dialog/-$$Lambda$MediaOutputController$UfU2fe4WCRCvdOo3KKvSLEzE4r8;->f$0:Lcom/android/systemui/media/dialog/MediaOutputController;

    iput-object p2, p0, Lcom/android/systemui/media/dialog/-$$Lambda$MediaOutputController$UfU2fe4WCRCvdOo3KKvSLEzE4r8;->f$1:Lcom/android/settingslib/media/MediaDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/dialog/-$$Lambda$MediaOutputController$UfU2fe4WCRCvdOo3KKvSLEzE4r8;->f$0:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object p0, p0, Lcom/android/systemui/media/dialog/-$$Lambda$MediaOutputController$UfU2fe4WCRCvdOo3KKvSLEzE4r8;->f$1:Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {v0, p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->lambda$connectDevice$0$MediaOutputController(Lcom/android/settingslib/media/MediaDevice;)V

    return-void
.end method
