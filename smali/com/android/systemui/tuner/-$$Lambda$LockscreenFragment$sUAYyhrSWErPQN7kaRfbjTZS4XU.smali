.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$sUAYyhrSWErPQN7kaRfbjTZS4XU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/tuner/LockscreenFragment;

.field public final synthetic f$1:Lcom/havoc/support/preferences/SwitchPreference;

.field public final synthetic f$2:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/LockscreenFragment;Lcom/havoc/support/preferences/SwitchPreference;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$sUAYyhrSWErPQN7kaRfbjTZS4XU;->f$0:Lcom/android/systemui/tuner/LockscreenFragment;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$sUAYyhrSWErPQN7kaRfbjTZS4XU;->f$1:Lcom/havoc/support/preferences/SwitchPreference;

    iput-object p3, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$sUAYyhrSWErPQN7kaRfbjTZS4XU;->f$2:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$sUAYyhrSWErPQN7kaRfbjTZS4XU;->f$0:Lcom/android/systemui/tuner/LockscreenFragment;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$sUAYyhrSWErPQN7kaRfbjTZS4XU;->f$1:Lcom/havoc/support/preferences/SwitchPreference;

    iget-object p0, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$sUAYyhrSWErPQN7kaRfbjTZS4XU;->f$2:Landroidx/preference/Preference;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/android/systemui/tuner/LockscreenFragment;->lambda$setupGroup$1$LockscreenFragment(Lcom/havoc/support/preferences/SwitchPreference;Landroidx/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
