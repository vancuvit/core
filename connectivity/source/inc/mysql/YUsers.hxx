/* -*- Mode: C++; tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 4 -*- */
/*
 * This file is part of the LibreOffice project.
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 *
 * This file incorporates work covered by the following license notice:
 *
 *   Licensed to the Apache Software Foundation (ASF) under one or more
 *   contributor license agreements. See the NOTICE file distributed
 *   with this work for additional information regarding copyright
 *   ownership. The ASF licenses this file to you under the Apache
 *   License, Version 2.0 (the "License"); you may not use this file
 *   except in compliance with the License. You may obtain a copy of
 *   the License at http://www.apache.org/licenses/LICENSE-2.0 .
 */

#ifndef INCLUDED_CONNECTIVITY_SOURCE_INC_MYSQL_YUSERS_HXX
#define INCLUDED_CONNECTIVITY_SOURCE_INC_MYSQL_YUSERS_HXX

#include "connectivity/sdbcx/VCollection.hxx"
#include "com/sun/star/sdbc/XConnection.hpp"
namespace connectivity
{
    namespace sdbcx
    {
        class IRefreshableUsers;
    }
    namespace mysql
    {
        class OUsers : public sdbcx::OCollection
        {
            ::com::sun::star::uno::Reference< ::com::sun::star::sdbc::XConnection > m_xConnection;
            connectivity::sdbcx::IRefreshableUsers* m_pParent;
        public:
            virtual sdbcx::ObjectType createObject(const OUString& _rName) SAL_OVERRIDE;
            virtual ::com::sun::star::uno::Reference< ::com::sun::star::beans::XPropertySet > createDescriptor() SAL_OVERRIDE;
            virtual void impl_refresh() throw(::com::sun::star::uno::RuntimeException) SAL_OVERRIDE;
            virtual sdbcx::ObjectType appendObject( const OUString& _rForName, const ::com::sun::star::uno::Reference< ::com::sun::star::beans::XPropertySet >& descriptor ) SAL_OVERRIDE;
            virtual void dropObject(sal_Int32 _nPos,const OUString& _sElementName) SAL_OVERRIDE;
        public:
            OUsers( ::cppu::OWeakObject& _rParent,
                    ::osl::Mutex& _rMutex,
                    const TStringVector &_rVector,
                    const ::com::sun::star::uno::Reference< ::com::sun::star::sdbc::XConnection >& _xConnection,
                    connectivity::sdbcx::IRefreshableUsers* _pParent);
        };
    }
}

#endif // INCLUDED_CONNECTIVITY_SOURCE_INC_MYSQL_YUSERS_HXX

/* vim:set shiftwidth=4 softtabstop=4 expandtab: */
