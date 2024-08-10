.class Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$2;
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
    .line 67
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$2;, "Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$2;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 70
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$2;, "Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$2;"
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "passPhrase":Ljava/lang/String;
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Lcom/parrot/freeflight/wifi/Wpa2PasswordChecker;->isSizeAllowed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;->sendPassphraseValue(ILjava/lang/String;)V

    .line 78
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;

    invoke-static {v1}, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;)Landroid/widget/EditText;

    move-result-object v1

    const v2, 0x7f110574

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0
.end method
