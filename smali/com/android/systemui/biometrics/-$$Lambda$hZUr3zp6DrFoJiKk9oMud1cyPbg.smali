.class public final synthetic Lcom/android/systemui/biometrics/-$$Lambda$hZUr3zp6DrFoJiKk9oMud1cyPbg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/biometrics/AuthContainerView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/AuthContainerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/-$$Lambda$hZUr3zp6DrFoJiKk9oMud1cyPbg;->f$0:Lcom/android/systemui/biometrics/AuthContainerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/-$$Lambda$hZUr3zp6DrFoJiKk9oMud1cyPbg;->f$0:Lcom/android/systemui/biometrics/AuthContainerView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->onDialogAnimatedIn()V

    return-void
.end method
