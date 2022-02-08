.class public Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;
.super Lcom/android/systemui/assist/ui/DefaultUiController;
.source "GoogleDefaultUiController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/assist/AssistLogger;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/assist/ui/DefaultUiController;-><init>(Landroid/content/Context;Lcom/android/systemui/assist/AssistLogger;)V

    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;->setGoogleAssistant(Z)V

    return-void
.end method


# virtual methods
.method public setGoogleAssistant(Z)V
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationLightsView:Lcom/android/systemui/assist/ui/InvocationLightsView;

    check-cast p0, Lcom/google/android/systemui/assist/uihints/AssistantInvocationLightsView;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/AssistantInvocationLightsView;->setGoogleAssistant(Z)V

    return-void
.end method
