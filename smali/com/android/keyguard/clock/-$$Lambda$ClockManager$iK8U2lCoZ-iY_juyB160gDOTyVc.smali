.class public final synthetic Lcom/android/keyguard/clock/-$$Lambda$ClockManager$iK8U2lCoZ-iY_juyB160gDOTyVc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/res/Resources;

.field public final synthetic f$1:Landroid/view/LayoutInflater;

.field public final synthetic f$2:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field public final synthetic f$3:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$iK8U2lCoZ-iY_juyB160gDOTyVc;->f$0:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$iK8U2lCoZ-iY_juyB160gDOTyVc;->f$1:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$iK8U2lCoZ-iY_juyB160gDOTyVc;->f$2:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iput-object p4, p0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$iK8U2lCoZ-iY_juyB160gDOTyVc;->f$3:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$iK8U2lCoZ-iY_juyB160gDOTyVc;->f$0:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$iK8U2lCoZ-iY_juyB160gDOTyVc;->f$1:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$iK8U2lCoZ-iY_juyB160gDOTyVc;->f$2:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object p0, p0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$iK8U2lCoZ-iY_juyB160gDOTyVc;->f$3:Landroid/content/Context;

    invoke-static {v0, v1, v2, p0}, Lcom/android/keyguard/clock/ClockManager;->lambda$new$10(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Landroid/content/Context;)Lcom/android/systemui/plugins/ClockPlugin;

    move-result-object p0

    return-object p0
.end method
