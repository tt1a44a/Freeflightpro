.class Lcom/parrot/freeflight/start/StartActivity$9;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/start/StartActivity;->showPermissionRequestDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/start/StartActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/start/StartActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/start/StartActivity;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/parrot/freeflight/start/StartActivity$9;->this$0:Lcom/parrot/freeflight/start/StartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 411
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity$9;->this$0:Lcom/parrot/freeflight/start/StartActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/start/StartActivity;->finish()V

    .line 412
    return-void
.end method
