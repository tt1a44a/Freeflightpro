.class Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$1;
.super Ljava/lang/Object;
.source "WifiNameLayoutViewHolder.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;

    .prologue
    .line 52
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$1;, "Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$1;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 55
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$1;, "Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$1;"
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "newDeviceName":Ljava/lang/String;
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;->sendValue(Ljava/lang/Object;)V

    .line 59
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
