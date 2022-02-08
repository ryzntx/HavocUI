.class public interface abstract Lcom/android/systemui/privacy/PrivacyItemController$Callback;
.super Ljava/lang/Object;
.source "PrivacyItemController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/privacy/PrivacyItemController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public onFlagAllChanged(Z)V
    .locals 0

    return-void
.end method

.method public onFlagMicCameraChanged(Z)V
    .locals 0

    return-void
.end method

.method public abstract onPrivacyItemsChanged(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyItem;",
            ">;)V"
        }
    .end annotation
.end method
