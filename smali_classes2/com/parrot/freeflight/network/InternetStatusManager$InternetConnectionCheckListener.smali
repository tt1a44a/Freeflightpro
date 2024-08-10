.class Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;
.super Ljava/lang/Object;
.source "InternetStatusManager.java"

# interfaces
.implements Lcom/parrot/freeflight/network/InternetConnectionChecker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/network/InternetStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternetConnectionCheckListener"
.end annotation


# instance fields
.field private mWaitingResult:Z

.field final synthetic this$0:Lcom/parrot/freeflight/network/InternetStatusManager;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/network/InternetStatusManager;)V
    .locals 1

    .prologue
    .line 116
    iput-object p1, p0, Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;->this$0:Lcom/parrot/freeflight/network/InternetStatusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;->mWaitingResult:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/network/InternetStatusManager;Lcom/parrot/freeflight/network/InternetStatusManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/network/InternetStatusManager;
    .param p2, "x1"    # Lcom/parrot/freeflight/network/InternetStatusManager$1;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;-><init>(Lcom/parrot/freeflight/network/InternetStatusManager;)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;->mWaitingResult:Z

    return v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;->markWaiting()V

    return-void
.end method

.method private markWaiting()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;->mWaitingResult:Z

    .line 122
    return-void
.end method


# virtual methods
.method public onCheck(Z)V
    .locals 1
    .param p1, "hasInternet"    # Z

    .prologue
    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;->this$0:Lcom/parrot/freeflight/network/InternetStatusManager;

    invoke-static {v0}, Lcom/parrot/freeflight/network/InternetStatusManager;->access$400(Lcom/parrot/freeflight/network/InternetStatusManager;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;->this$0:Lcom/parrot/freeflight/network/InternetStatusManager;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/network/InternetStatusManager;->access$402(Lcom/parrot/freeflight/network/InternetStatusManager;Z)Z

    .line 128
    iget-object v0, p0, Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;->this$0:Lcom/parrot/freeflight/network/InternetStatusManager;

    invoke-static {v0}, Lcom/parrot/freeflight/network/InternetStatusManager;->access$500(Lcom/parrot/freeflight/network/InternetStatusManager;)V

    .line 130
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/network/InternetStatusManager$InternetConnectionCheckListener;->mWaitingResult:Z

    .line 131
    return-void
.end method
