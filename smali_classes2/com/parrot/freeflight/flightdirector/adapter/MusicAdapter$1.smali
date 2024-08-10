.class Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$1;
.super Ljava/lang/Object;
.source "MusicAdapter.java"

# interfaces
.implements Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView$OnPlayButtonClickListener;


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
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;Lcom/parrot/freeflight/flightdirector/data/MusicItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$1;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    iput-object p2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$1;->val$holder:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    iput-object p3, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$1;->val$item:Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 5
    .param p1, "playingStatus"    # I

    .prologue
    .line 152
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$1;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-static {v2}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$400(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->getItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$1;->val$holder:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    invoke-virtual {v3}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->getAdapterPosition()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 153
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$1;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-static {v2}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$400(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$1;->val$holder:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    invoke-static {v3}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->access$200(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;)Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->setLayout(Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;)V

    .line 154
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$1;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-static {v2}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$400(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->recycle()V

    .line 155
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$1;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-static {v2}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$400(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$1;->val$item:Lcom/parrot/freeflight/flightdirector/data/MusicItem;

    iget-object v4, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$1;->val$holder:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    invoke-virtual {v4}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->getAdapterPosition()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->prepare(Lcom/parrot/freeflight/flightdirector/data/MusicItem;I)V

    .line 156
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$1;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-static {v2}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$400(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->play()V

    .line 158
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$1;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$1;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-static {v2}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$500(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    .line 160
    .local v0, "holder":Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;
    if-eqz v0, :cond_0

    .line 161
    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->access$200(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;)Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->setPlayingStatus(Z)V

    .line 158
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "holder":Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$1;->val$holder:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;

    invoke-static {v2}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;->access$200(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$MusicViewHolder;)Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/flightdirector/view/SampleSelectorView;->setPlayingStatus(Z)V

    .line 169
    .end local v1    # "i":I
    :goto_1
    return-void

    .line 167
    :cond_2
    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$1;->this$0:Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;

    invoke-static {v2}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;->access$400(Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter;)Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/flightdirector/adapter/MusicAdapter$Player;->togglePlayerStatus()V

    goto :goto_1
.end method
