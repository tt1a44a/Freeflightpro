.class public Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "VersionHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private mCountView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;->this$0:Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;

    .line 41
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 42
    const v0, 0x7f0a04cc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;->mTitleView:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f0a04d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;->mCountView:Landroid/widget/TextView;

    .line 45
    invoke-static {p1}, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;->access$000(Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;->mTitleView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 46
    invoke-static {p1}, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;->access$000(Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;->mCountView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 47
    return-void
.end method


# virtual methods
.method public bind(Lcom/parrot/freeflight/whatsnew/model/Version;ZLcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$OnItemClickListener;)V
    .locals 4
    .param p1, "version"    # Lcom/parrot/freeflight/whatsnew/model/Version;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isNew"    # Z
    .param p3, "listener"    # Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$OnItemClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;->mTitleView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;->this$0:Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;

    invoke-static {v2}, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;->access$000(Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1107b4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/parrot/freeflight/whatsnew/model/Version;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;->mCountView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/parrot/freeflight/whatsnew/model/Version;->features:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;->mCountView:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;->mCountView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;->this$0:Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;

    invoke-static {v1}, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;->access$000(Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05013c

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintBackgroundColor(Landroid/view/View;I)V

    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder$1;

    invoke-direct {v1, p0, p3, p1}, Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder$1;-><init>(Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$ViewHolder;Lcom/parrot/freeflight/whatsnew/VersionHistoryAdapter$OnItemClickListener;Lcom/parrot/freeflight/whatsnew/model/Version;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void

    .line 52
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
