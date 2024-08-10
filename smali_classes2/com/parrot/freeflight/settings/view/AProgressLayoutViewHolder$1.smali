.class Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$1;
.super Ljava/lang/Object;
.source "AProgressLayoutViewHolder.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;

    .prologue
    .line 60
    .local p0, "this":Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$1;, "Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$1;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;

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
    .line 63
    .local p0, "this":Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$1;, "Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$1;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->onProgressChanged(I)V

    .line 64
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 69
    .local p0, "this":Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$1;, "Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$1;"
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 73
    .local p0, "this":Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$1;, "Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$1;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSettingsValue:Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->mSettingsValue:Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/settings/model/ABoundedStateSettingsEntry;->sendValue(Ljava/lang/Object;)V

    .line 76
    :cond_0
    return-void
.end method
