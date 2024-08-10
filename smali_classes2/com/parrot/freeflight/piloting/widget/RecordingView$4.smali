.class Lcom/parrot/freeflight/piloting/widget/RecordingView$4;
.super Ljava/lang/Object;
.source "RecordingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/widget/RecordingView;->updateDurationText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/widget/RecordingView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/widget/RecordingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/widget/RecordingView;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView$4;->this$0:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 329
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView$4;->this$0:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->access$300(Lcom/parrot/freeflight/piloting/widget/RecordingView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView$4;->this$0:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->access$400(Lcom/parrot/freeflight/piloting/widget/RecordingView;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView$4;->this$0:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    invoke-static {v4}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->access$400(Lcom/parrot/freeflight/piloting/widget/RecordingView;)J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 330
    .local v0, "elapsedTime":J
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView$4;->this$0:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->access$700(Lcom/parrot/freeflight/piloting/widget/RecordingView;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView$4;->this$0:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    invoke-static {v3}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->access$600(Lcom/parrot/freeflight/piloting/widget/RecordingView;)Lcom/parrot/freeflight/util/ui/MetricsServant;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/parrot/freeflight/util/ui/MetricsServant;->formatRecordDuration(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    return-void

    .line 329
    .end local v0    # "elapsedTime":J
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/widget/RecordingView$4;->this$0:Lcom/parrot/freeflight/piloting/widget/RecordingView;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/widget/RecordingView;->access$500(Lcom/parrot/freeflight/piloting/widget/RecordingView;)J

    move-result-wide v0

    goto :goto_0
.end method
