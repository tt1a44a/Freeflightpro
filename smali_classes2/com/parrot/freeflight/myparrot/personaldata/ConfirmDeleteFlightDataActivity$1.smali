.class Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteFlightDataActivity$1;
.super Ljava/lang/Object;
.source "ConfirmDeleteFlightDataActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteFlightDataActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteFlightDataActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteFlightDataActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteFlightDataActivity;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteFlightDataActivity$1;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteFlightDataActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteFlightDataActivity$1;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteFlightDataActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteFlightDataActivity;->access$000(Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDeleteFlightDataActivity;)V

    .line 45
    return-void
.end method
