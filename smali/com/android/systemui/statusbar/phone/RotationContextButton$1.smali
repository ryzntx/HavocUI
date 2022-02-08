.class Lcom/android/systemui/statusbar/phone/RotationContextButton$1;
.super Ljava/lang/Object;
.source "RotationContextButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/RotationContextButton;->setVisibilityChangedCallback(Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$visibilityChangedCallback:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/RotationContextButton;Ljava/util/function/Consumer;)V
    .locals 0

    .line 50
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/RotationContextButton$1;->val$visibilityChangedCallback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Lcom/android/systemui/statusbar/phone/ContextualButton;Z)V
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationContextButton$1;->val$visibilityChangedCallback:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    .line 54
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
