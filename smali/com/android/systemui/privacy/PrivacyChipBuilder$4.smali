.class final Lcom/android/systemui/privacy/PrivacyChipBuilder$4;
.super Lkotlin/jvm/internal/Lambda;
.source "PrivacyChipBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/privacy/PrivacyChipBuilder;-><init>(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Pair<",
        "+",
        "Lcom/android/systemui/privacy/PrivacyApplication;",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/android/systemui/privacy/PrivacyType;",
        ">;>;",
        "Lcom/android/systemui/privacy/PrivacyType;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/privacy/PrivacyChipBuilder$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/privacy/PrivacyChipBuilder$4;

    invoke-direct {v0}, Lcom/android/systemui/privacy/PrivacyChipBuilder$4;-><init>()V

    sput-object v0, Lcom/android/systemui/privacy/PrivacyChipBuilder$4;->INSTANCE:Lcom/android/systemui/privacy/PrivacyChipBuilder$4;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lkotlin/Pair;)Lcom/android/systemui/privacy/PrivacyType;
    .locals 0
    .param p1    # Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Lcom/android/systemui/privacy/PrivacyApplication;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/privacy/PrivacyType;",
            ">;>;)",
            "Lcom/android/systemui/privacy/PrivacyType;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->min(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/privacy/PrivacyType;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/android/systemui/privacy/PrivacyChipBuilder$4;->invoke(Lkotlin/Pair;)Lcom/android/systemui/privacy/PrivacyType;

    move-result-object p0

    return-object p0
.end method
