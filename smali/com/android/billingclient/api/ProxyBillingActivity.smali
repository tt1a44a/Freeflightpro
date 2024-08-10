.class public Lcom/android/billingclient/api/ProxyBillingActivity;
.super Landroid/app/Activity;
.source "ProxyBillingActivity.java"


# static fields
.field static final KEY_RESULT_RECEIVER:Ljava/lang/String; = "result_receiver"

.field private static final REQUEST_CODE_LAUNCH_ACTIVITY:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ProxyBillingActivity"


# instance fields
.field private mResultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 69
    const/16 v1, 0x64

    if-ne p1, v1, :cond_3

    .line 70
    const-string v1, "ProxyBillingActivity"

    invoke-static {p3, v1}, Lcom/android/billingclient/util/BillingHelper;->getResponseCodeFromIntent(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v0

    .line 71
    .local v0, "responseCode":I
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    const-string v1, "ProxyBillingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity finished with resultCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and billing\'s responseCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_1
    iget-object v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    if-nez p3, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 85
    .end local v0    # "responseCode":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->finish()V

    .line 86
    return-void

    .line 79
    .restart local v0    # "responseCode":I
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    .line 81
    .end local v0    # "responseCode":I
    :cond_3
    const-string v1, "ProxyBillingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got onActivityResult with wrong requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; skipping..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    if-nez p1, :cond_2

    .line 37
    const-string v0, "ProxyBillingActivity"

    const-string v1, "Launching Play Store billing flow"

    invoke-static {v0, v1}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "result_receiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 39
    const/4 v8, 0x0

    .line 40
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BUY_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "BUY_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    .end local v8    # "pendingIntent":Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 48
    .restart local v8    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v8}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/16 v2, 0x64

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 47
    invoke-virtual/range {v0 .. v6}, Lcom/android/billingclient/api/ProxyBillingActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v8    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_1
    return-void

    .line 42
    .restart local v8    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SUBS_MANAGEMENT_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SUBS_MANAGEMENT_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    .end local v8    # "pendingIntent":Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .restart local v8    # "pendingIntent":Landroid/app/PendingIntent;
    goto :goto_0

    .line 49
    :catch_0
    move-exception v7

    .line 50
    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v0, "ProxyBillingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got exception while trying to start a purchase flow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->finish()V

    goto :goto_1

    .line 55
    .end local v7    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v8    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_2
    const-string v0, "ProxyBillingActivity"

    const-string v1, "Launching Play Store billing flow from savedInstanceState"

    invoke-static {v0, v1}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string/jumbo v0, "result_receiver"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    const-string/jumbo v0, "result_receiver"

    iget-object v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 63
    return-void
.end method
