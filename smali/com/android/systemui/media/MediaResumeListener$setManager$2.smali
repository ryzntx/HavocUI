.class public final Lcom/android/systemui/media/MediaResumeListener$setManager$2;
.super Ljava/lang/Object;
.source "MediaResumeListener.kt"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaResumeListener;->setManager(Lcom/android/systemui/media/MediaDataManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaResumeListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaResumeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/android/systemui/media/MediaResumeListener$setManager$2;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 125
    iget-object p1, p0, Lcom/android/systemui/media/MediaResumeListener$setManager$2;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    invoke-static {p1}, Lcom/android/systemui/media/MediaResumeListener;->access$getContext$p(Lcom/android/systemui/media/MediaResumeListener;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/systemui/util/Utils;->getBlockedMediaApps(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p2

    const-string v0, "Utils.getBlockedMediaApps(context)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/systemui/media/MediaResumeListener;->access$setBlockedApps$p(Lcom/android/systemui/media/MediaResumeListener;Ljava/util/Set;)V

    .line 126
    iget-object p1, p0, Lcom/android/systemui/media/MediaResumeListener$setManager$2;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    invoke-static {p1}, Lcom/android/systemui/media/MediaResumeListener;->access$getMediaDataManager$p(Lcom/android/systemui/media/MediaResumeListener;)Lcom/android/systemui/media/MediaDataManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener$setManager$2;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    invoke-static {p0}, Lcom/android/systemui/media/MediaResumeListener;->access$getBlockedApps$p(Lcom/android/systemui/media/MediaResumeListener;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/media/MediaDataManager;->setAppsBlockedFromResume$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Ljava/util/Set;)V

    return-void
.end method
