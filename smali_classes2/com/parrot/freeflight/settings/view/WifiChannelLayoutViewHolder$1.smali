.class Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$1;
.super Landroid/widget/ArrayAdapter;
.source "WifiChannelLayoutViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # I

    .prologue
    .line 39
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$1;, "Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$1;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private printChannelInfo(Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "info"    # Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$1;, "Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$1;"
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$1;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f110572

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, p1, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->band:I

    if-nez v1, :cond_0

    const v1, 0x7f11056f

    .line 63
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f11013a

    .line 65
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;->channel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    return-object v1

    :cond_0
    const v1, 0x7f110570

    goto :goto_0
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$1;, "Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$1;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 52
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    .local v0, "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    move-object v2, v1

    .line 53
    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$1;->printChannelInfo(Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$1;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 55
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 42
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$1;, "Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$1;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 43
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    .local v0, "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    move-object v2, v1

    .line 44
    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$1;->printChannelInfo(Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p0}, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$1;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 46
    return-object v1
.end method
