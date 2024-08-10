.class Lcom/parrot/freeflight/authentication/ConnectActivity$2;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/authentication/ConnectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/authentication/ConnectActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/authentication/ConnectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/authentication/ConnectActivity;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/parrot/freeflight/authentication/ConnectActivity$2;->this$0:Lcom/parrot/freeflight/authentication/ConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/authentication/ConnectActivity$2;->this$0:Lcom/parrot/freeflight/authentication/ConnectActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->onBackPressed(Landroid/support/v4/app/FragmentActivity;)V

    .line 65
    return-void
.end method
