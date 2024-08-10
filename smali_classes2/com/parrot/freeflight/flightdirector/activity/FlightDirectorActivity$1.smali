.class Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$1;
.super Ljava/lang/Object;
.source "FlightDirectorActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment$OnDataProcessingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ZI)V
    .locals 4
    .param p1, "onError"    # Z
    .param p2, "errorCode"    # I

    .prologue
    .line 64
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->access$000(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 65
    if-eqz p1, :cond_0

    const/16 v1, 0x6b

    if-eq p2, v1, :cond_0

    .line 67
    sparse-switch p2, :sswitch_data_0

    .line 75
    const v0, 0x7f110214

    .line 77
    .local v0, "errorMessage":I
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->access$100(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    iget-object v2, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    const v3, 0x7f11021c

    .line 79
    invoke-static {v2, v3, v0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorErrorActivity;->getStartingIntent(Landroid/content/Context;II)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x64

    .line 78
    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 86
    .end local v0    # "errorMessage":I
    :cond_0
    return-void

    .line 69
    :sswitch_0
    const v0, 0x7f110215

    .line 70
    .restart local v0    # "errorMessage":I
    goto :goto_0

    .line 72
    .end local v0    # "errorMessage":I
    :sswitch_1
    const v0, 0x7f110213

    .line 73
    .restart local v0    # "errorMessage":I
    goto :goto_0

    .line 67
    nop

    :sswitch_data_0
    .sparse-switch
        0x6a -> :sswitch_1
        0x6e -> :sswitch_0
    .end sparse-switch
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$1;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->access$000(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 60
    return-void
.end method
