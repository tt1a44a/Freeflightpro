.class Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDownloadFlightDataActivity$2;
.super Ljava/lang/Object;
.source "ConfirmDownloadFlightDataActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDownloadFlightDataActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDownloadFlightDataActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDownloadFlightDataActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDownloadFlightDataActivity;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDownloadFlightDataActivity$2;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDownloadFlightDataActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDownloadFlightDataActivity$2;->this$0:Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDownloadFlightDataActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/myparrot/personaldata/ConfirmDownloadFlightDataActivity;->finish()V

    .line 52
    return-void
.end method
