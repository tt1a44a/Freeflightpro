.class Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity$1;
.super Ljava/lang/Object;
.source "ConfirmDeleteAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity$1;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity$1;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;->access$000(Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteAccountActivity;)V

    .line 45
    return-void
.end method
