.class Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$4;
.super Ljava/lang/Object;
.source "WifiChannelLayoutViewHolder.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 92
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$4;, "Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$4;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$4;->this$0:Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 96
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$4;, "Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$4;"
    return-void
.end method
