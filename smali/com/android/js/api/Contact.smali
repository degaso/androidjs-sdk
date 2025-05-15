.class public Lcom/android/js/api/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private contacts:Lorg/json/JSONArray;

.field private cursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/js/api/Contact;->activity:Landroid/app/Activity;

    .line 24
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lcom/android/js/api/Contact;->contacts:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public addContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 55
    const-string v2, "account_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "account_name"

    .line 56
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    const-string v1, "data1"

    const-string v2, "mimetype"

    const/4 v3, 0x0

    const-string v4, "raw_contact_id"

    if-eqz p1, :cond_0

    .line 59
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 61
    invoke-virtual {v5, v4, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "vnd.android.cursor.item/name"

    .line 62
    invoke-virtual {v5, v2, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 63
    invoke-virtual {v5, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    .line 59
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x2

    .line 65
    const-string v5, "data2"

    if-eqz p2, :cond_1

    .line 66
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 67
    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 68
    invoke-virtual {v6, v4, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "vnd.android.cursor.item/phone_v2"

    .line 69
    invoke-virtual {v6, v2, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 70
    invoke-virtual {v6, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    .line 72
    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    .line 66
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p3, :cond_2

    .line 75
    sget-object p2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    .line 76
    invoke-virtual {p2, v4, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    const-string v3, "vnd.android.cursor.item/email_v2"

    .line 77
    invoke-virtual {p2, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    .line 78
    invoke-virtual {p2, v1, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v5, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    .line 75
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/android/js/api/Contact;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "com.android.contacts"

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    const/4 p1, 0x1

    .line 85
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/js/api/Contact;->getAllContacts(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 86
    const-string p1, "{\"error\": false, \"msg\": \"contact added\"}"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "{\"error\": true, \"err\": \""

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAllContacts(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/android/js/api/Contact;->contacts:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/android/js/api/Contact;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/js/api/Contact;->cursor:Landroid/database/Cursor;

    .line 31
    :goto_0
    iget-object p1, p0, Lcom/android/js/api/Contact;->cursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 32
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 33
    iget-object v0, p0, Lcom/android/js/api/Contact;->cursor:Landroid/database/Cursor;

    const-string v1, "display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    iget-object v0, p0, Lcom/android/js/api/Contact;->cursor:Landroid/database/Cursor;

    const-string v1, "data1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "phone_number"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    iget-object v0, p0, Lcom/android/js/api/Contact;->cursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v2, p0, Lcom/android/js/api/Contact;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v5, 0x0

    const-string v6, "contact_id = ?"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "email"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/android/js/api/Contact;->contacts:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/android/js/api/Contact;->cursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 49
    :cond_3
    iget-object p1, p0, Lcom/android/js/api/Contact;->contacts:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getContactByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/android/js/api/Contact;->contacts:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/js/api/Contact;->getAllContacts(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 95
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/js/api/Contact;->contacts:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/android/js/api/Contact;->contacts:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/js/api/Contact;->contacts:Lorg/json/JSONArray;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_2
    const-string p1, "{\"error\": false, \"msg\": \"record not found\"}"

    return-object p1
.end method

.method public getContactsCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/android/js/api/Contact;->contacts:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/js/api/Contact;->getAllContacts(Ljava/lang/Boolean;)Ljava/lang/String;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/js/api/Contact;->contacts:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method
