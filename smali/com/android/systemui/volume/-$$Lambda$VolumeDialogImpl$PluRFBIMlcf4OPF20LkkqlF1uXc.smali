.class public final synthetic Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$PluRFBIMlcf4OPF20LkkqlF1uXc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$PluRFBIMlcf4OPF20LkkqlF1uXc;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iput-boolean p2, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$PluRFBIMlcf4OPF20LkkqlF1uXc;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$PluRFBIMlcf4OPF20LkkqlF1uXc;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-boolean p0, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$PluRFBIMlcf4OPF20LkkqlF1uXc;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$updateCaptionsIcon$13$VolumeDialogImpl(Z)V

    return-void
.end method