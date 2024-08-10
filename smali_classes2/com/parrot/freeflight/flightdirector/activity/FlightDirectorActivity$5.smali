.class Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$5;
.super Ljava/lang/Object;
.source "FlightDirectorActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/flightdirector/view/DirectorBottomBarView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->initBottomBar()V
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
    .line 164
    iput-object p1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$5;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(I)Z
    .locals 3
    .param p1, "tab"    # I

    .prologue
    const/4 v2, 0x1

    .line 167
    packed-switch p1, :pswitch_data_0

    .line 193
    :goto_0
    return v2

    .line 169
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$5;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$5;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->access$300(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)Lcom/parrot/freeflight/flightdirector/fragment/DurationFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->access$400(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;)V

    .line 170
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$5;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->access$102(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;Z)Z

    goto :goto_0

    .line 173
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$5;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$5;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->access$500(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)Lcom/parrot/freeflight/flightdirector/fragment/StyleFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->access$400(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;)V

    .line 174
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$5;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->access$102(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;Z)Z

    goto :goto_0

    .line 177
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$5;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$5;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->access$600(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)Lcom/parrot/freeflight/flightdirector/fragment/MusicFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->access$400(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;)V

    .line 178
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$5;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->access$102(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;Z)Z

    goto :goto_0

    .line 181
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$5;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$5;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->access$700(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)Lcom/parrot/freeflight/flightdirector/fragment/MomentsFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->access$400(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;)V

    .line 182
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$5;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->access$102(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;Z)Z

    goto :goto_0

    .line 185
    :pswitch_4
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$5;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$5;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->access$800(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)Lcom/parrot/freeflight/flightdirector/fragment/FlightDataFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->access$400(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;)V

    .line 186
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$5;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->access$102(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;Z)Z

    goto :goto_0

    .line 189
    :pswitch_5
    iget-object v0, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$5;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity$5;->this$0:Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->access$900(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;)Lcom/parrot/freeflight/flightdirector/fragment/PreviewFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;->access$400(Lcom/parrot/freeflight/flightdirector/activity/FlightDirectorActivity;Lcom/parrot/freeflight/flightdirector/fragment/AFlightDirectorFragment;)V

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
