.class public final synthetic Lcom/android/systemui/custom/-$$Lambda$U4disPeMgTpC7wxH8HVHlQDRJDs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/custom/-$$Lambda$U4disPeMgTpC7wxH8HVHlQDRJDs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/custom/-$$Lambda$U4disPeMgTpC7wxH8HVHlQDRJDs;

    invoke-direct {v0}, Lcom/android/systemui/custom/-$$Lambda$U4disPeMgTpC7wxH8HVHlQDRJDs;-><init>()V

    sput-object v0, Lcom/android/systemui/custom/-$$Lambda$U4disPeMgTpC7wxH8HVHlQDRJDs;->INSTANCE:Lcom/android/systemui/custom/-$$Lambda$U4disPeMgTpC7wxH8HVHlQDRJDs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/custom/BackgroundProcessManager;->stop()V

    return-void
.end method
