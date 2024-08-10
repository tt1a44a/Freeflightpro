.class Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$4;
.super Ljava/lang/Object;
.source "WifiNameLayoutViewHolder.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 91
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$4;, "Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$4;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$4;->this$0:Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 95
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$4;, "Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$4;"
    return-void
.end method
