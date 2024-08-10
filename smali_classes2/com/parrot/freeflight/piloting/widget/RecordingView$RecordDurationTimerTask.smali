.class Lcom/parrot/freeflight/piloting/widget/RecordingView$RecordDurationTimerTask;
.super Ljava/util/TimerTask;
.source "RecordingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/widget/RecordingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordDurationTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/widget/RecordingView;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/piloting/widget/RecordingView;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView$RecordDurationTimerTask;->this$0:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/piloting/widget/RecordingView;Lcom/parrot/freeflight/piloting/widget/RecordingView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/piloting/widget/RecordingView;
    .param p2, "x1"    # Lcom/parrot/freeflight/piloting/widget/RecordingView$1;

    .prologue
    .line 393
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/widget/RecordingView$RecordDurationTimerTask;-><init>(Lcom/parrot/freeflight/piloting/widget/RecordingView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView$RecordDurationTimerTask;->this$0:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->access$900(Lcom/parrot/freeflight/piloting/widget/RecordingView;)V

    .line 397
    return-void
.end method
