.class Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$3;
.super Ljava/lang/Object;
.source "WifiChannelLayoutViewHolder.java"

# interfaces
.implements Lcom/parrot/freeflight/view/CustomSpinner$OnSpinnerOpenStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;

    .prologue
    .line 81
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$3;, "Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$3;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenStateChanged(Landroid/widget/Spinner;Z)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/Spinner;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "opened"    # Z

    .prologue
    .line 84
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$3;, "Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$3;"
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;

    invoke-static {v1, p1}, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->access$200(Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;Landroid/view/View;)V

    .line 85
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->access$300(Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;)Lcom/parrot/freeflight/piloting/ui/settings/IBarDisplayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 86
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110176

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "alertInfo":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->access$300(Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;)Lcom/parrot/freeflight/piloting/ui/settings/IBarDisplayer;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/parrot/freeflight/piloting/ui/settings/IBarDisplayer;->showBar(Ljava/lang/String;)V

    .line 89
    .end local v0    # "alertInfo":Ljava/lang/String;
    :cond_0
    return-void

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
