.class Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$2;
.super Ljava/lang/Object;
.source "AProgressLayoutViewHolder.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;

    .prologue
    .line 79
    .local p0, "this":Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$2;, "Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$2;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 82
    .local p0, "this":Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$2;, "Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$2;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;

    invoke-static {v0, p2, p3}, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
