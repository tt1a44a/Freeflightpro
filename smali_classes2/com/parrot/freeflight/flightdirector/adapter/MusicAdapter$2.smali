.class Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;
.super Ljava/lang/Object;
.source "MusicAdapter.java"

# interfaces
.implements Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->onBindViewHolder(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

.field final synthetic val$holder:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

.field final synthetic val$item:Lcom/parrot/freeflight/flightdirector/data/MusicItem;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;Lcom/parrot/freeflight/flightdirector/data/MusicItem;Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    iput-object p2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->val$item:Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    iput-object p3, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->val$holder:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChange(III)V
    .locals 6
    .param p1, "leftX"    # I
    .param p2, "rightX"    # I
    .param p3, "totalWidth"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$500(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightdirector/view/ExtendedLinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/flightdirector/view/ExtendedLinearLayoutManager;->setScrollEnabled(Z)V

    .line 177
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->val$item:Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    int-to-double v2, p1

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->val$holder:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->access$200(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;)Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->getWidth()I

    move-result v1

    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->val$item:Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getDuration()D

    move-result-wide v4

    invoke-static {v2, v3, v1, v4, v5}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$600(DID)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->setStartTime(D)V

    .line 178
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->val$item:Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    int-to-double v2, p2

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->val$holder:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->access$200(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;)Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->getWidth()I

    move-result v1

    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->val$item:Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getDuration()D

    move-result-wide v4

    invoke-static {v2, v3, v1, v4, v5}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$600(DID)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->setEndTime(D)V

    .line 180
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->val$holder:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->val$holder:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->access$700(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->val$holder:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    invoke-static {v2}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->access$800(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->val$holder:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    .line 181
    invoke-static {v3}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->access$200(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;)Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->getWidth()I

    move-result v5

    move v3, p1

    move v4, p2

    .line 180
    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->access$900(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;Landroid/widget/TextView;Landroid/widget/TextView;III)V

    .line 182
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->val$holder:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->access$700(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->val$holder:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->access$200(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;)Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->val$item:Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getDuration()D

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$1000(IID)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->val$holder:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->access$800(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->val$item:Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getStartTime()D

    move-result-wide v2

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$1100(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)I

    move-result v1

    invoke-static {v2, v3, v1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$1200(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$400(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->getItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->val$holder:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->getAdapterPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$400(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->val$item:Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getStartTime()D

    move-result-wide v2

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->val$item:Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getEndTime()D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->processProgressChange(DD)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$1300(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$OnMusicInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$1300(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$OnMusicInteractionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$2;->val$item:Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    invoke-virtual {v1}, Lcom/parrot/freeflight/flightdirector/data/MusicItem;->getStartTime()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$OnMusicInteractionListener;->onSampleMoved(F)V

    .line 192
    :cond_1
    return-void
.end method
