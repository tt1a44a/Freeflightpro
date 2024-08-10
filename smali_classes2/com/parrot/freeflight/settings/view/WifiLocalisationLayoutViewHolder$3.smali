.class Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$3;
.super Ljava/lang/Object;
.source "WifiLocalisationLayoutViewHolder.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/widget/ObjectPicker$OnDispatchKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;

    .prologue
    .line 60
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$3;, "Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$3;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDispatchKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 63
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$3;, "Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$3;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$3;->this$0:Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->access$200(Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
