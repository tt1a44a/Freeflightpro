.class Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar$1;
.super Ljava/lang/Object;
.source "DurationSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar$1;->this$0:Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 130
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar$1;->this$0:Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->access$000(Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 131
    .local v0, "lastAvailableIndex":I
    :goto_0
    if-le p2, v0, :cond_0

    .line 132
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar$1;->this$0:Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->access$101(Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;I)V

    .line 134
    :cond_0
    return-void

    .line 130
    .end local v0    # "lastAvailableIndex":I
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar$1;->this$0:Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->access$000(Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 139
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar$1;->this$0:Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->access$200(Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;)Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar$DurationValueChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar$1;->this$0:Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;->access$200(Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar;)Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar$DurationValueChangeListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/flightdirector/view/DurationSeekBar$DurationValueChangeListener;->onDurationChange(I)V

    .line 146
    :cond_0
    return-void
.end method
