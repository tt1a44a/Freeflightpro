.class Lcom/parrot/freeflight/infos/DroneInfosUiController$8;
.super Ljava/lang/Object;
.source "DroneInfosUiController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/infos/DroneInfosUiController;->seeDroneLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/infos/DroneInfosUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/infos/DroneInfosUiController;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$8;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 392
    iget-object v9, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$8;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    iget-object v9, v9, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    if-eqz v9, :cond_0

    .line 393
    iget-object v9, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$8;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    iget-object v9, v9, Lcom/parrot/freeflight/infos/DroneInfosUiController;->mModel:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v9}, Lcom/parrot/freeflight/core/model/DroneModel;->getPosition()Lcom/parrot/freeflight/core/model/DroneModel$Position;

    move-result-object v9

    invoke-virtual {v9}, Lcom/parrot/freeflight/core/model/DroneModel$Position;->getLocation()Landroid/location/Location;

    move-result-object v4

    .line 394
    .local v4, "location":Landroid/location/Location;
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 395
    .local v2, "latitude":D
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 396
    .local v6, "longitude":D
    iget-object v9, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$8;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v9}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$300(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f110392

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "label":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 399
    .local v5, "query":Ljava/lang/String;
    new-instance v8, Landroid/net/Uri$Builder;

    invoke-direct {v8}, Landroid/net/Uri$Builder;-><init>()V

    .line 400
    .local v8, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v9, "geo"

    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 401
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 402
    const-string/jumbo v9, "q"

    invoke-virtual {v8, v9, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 403
    new-instance v0, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    .line 404
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 405
    .local v0, "intent":Landroid/content/Intent;
    const-string v9, "com.google.android.apps.maps"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    iget-object v9, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$8;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v9}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$300(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 409
    iget-object v9, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$8;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v9}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$300(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 414
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "label":Ljava/lang/String;
    .end local v2    # "latitude":D
    .end local v4    # "location":Landroid/location/Location;
    .end local v5    # "query":Ljava/lang/String;
    .end local v6    # "longitude":D
    .end local v8    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_0
    :goto_0
    return-void

    .line 411
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "label":Ljava/lang/String;
    .restart local v2    # "latitude":D
    .restart local v4    # "location":Landroid/location/Location;
    .restart local v5    # "query":Ljava/lang/String;
    .restart local v6    # "longitude":D
    .restart local v8    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_1
    iget-object v9, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$8;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v9}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$400(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$8;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-static {v10}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->access$300(Lcom/parrot/freeflight/infos/DroneInfosUiController;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f11032a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0
.end method
