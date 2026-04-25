using { shubham.db.CDSViews } from '../db/CDSViews';

service CDSViewService {

    entity SOWorkList as projection on CDSViews.SOWorkList;

}