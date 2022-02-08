.class public final synthetic Lcom/android/systemui/volume/-$$Lambda$VolumeDialogComponent$iJeTl40QFquCCQ9Nn67_9_GcSZY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/VolumeDialogComponent;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogComponent;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogComponent$iJeTl40QFquCCQ9Nn67_9_GcSZY;->f$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    iput-boolean p2, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogComponent$iJeTl40QFquCCQ9Nn67_9_GcSZY;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogComponent$iJeTl40QFquCCQ9Nn67_9_GcSZY;->f$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    iget-boolean p0, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogComponent$iJeTl40QFquCCQ9Nn67_9_GcSZY;->f$1:Z

    check-cast p1, Lcom/android/systemui/plugins/VolumeDialog;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/volume/VolumeDialogComponent;->lambda$new$0$VolumeDialogComponent(ZLcom/android/systemui/plugins/VolumeDialog;)V

    return-void
.end method
